package com.mixpanel.android.viewcrawler;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.mixpanel.android.util.MPLog;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/FlipGesture.class */
class FlipGesture implements SensorEventListener {
    private static final float ACCELEROMETER_SMOOTHING = 0.7f;
    private static final int FLIP_STATE_DOWN = 1;
    private static final int FLIP_STATE_NONE = 0;
    private static final int FLIP_STATE_UP = -1;
    private static final String LOGTAG = "MixpanelAPI.FlipGesture";
    private static final float MAXIMUM_GRAVITY_FOR_FLIP = 11.8f;
    private static final long MINIMUM_CANCEL_DURATION = 1000000000;
    private static final float MINIMUM_GRAVITY_FOR_FLIP = 7.8f;
    private static final long MINIMUM_UP_DOWN_DURATION = 250000000;
    private static final int TRIGGER_STATE_BEGIN = 1;
    private static final int TRIGGER_STATE_NONE = 0;
    private final OnFlipGestureListener mListener;
    private int mTriggerState = -1;
    private int mFlipState = 0;
    private long mLastFlipTime = -1;
    private final float[] mSmoothed = new float[3];

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/FlipGesture$OnFlipGestureListener.class */
    public interface OnFlipGestureListener {
        void onFlipGesture();
    }

    public FlipGesture(OnFlipGestureListener onFlipGestureListener) {
        this.mListener = onFlipGestureListener;
    }

    private float[] smoothXYZ(float[] fArr) {
        for (int i = 0; i < 3; i++) {
            float f = this.mSmoothed[i];
            this.mSmoothed[i] = f + ((fArr[i] - f) * ACCELEROMETER_SMOOTHING);
        }
        return this.mSmoothed;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        float[] smoothXYZ = smoothXYZ(sensorEvent.values);
        int i = this.mFlipState;
        float f = (smoothXYZ[0] * smoothXYZ[0]) + (smoothXYZ[1] * smoothXYZ[1]) + (smoothXYZ[2] * smoothXYZ[2]);
        this.mFlipState = 0;
        if (smoothXYZ[2] > MINIMUM_GRAVITY_FOR_FLIP && smoothXYZ[2] < MAXIMUM_GRAVITY_FOR_FLIP) {
            this.mFlipState = -1;
        }
        if (smoothXYZ[2] < -7.8f && smoothXYZ[2] > -11.8f) {
            this.mFlipState = 1;
        }
        if (f < 60.840004f || f > 139.24f) {
            this.mFlipState = 0;
        }
        if (i != this.mFlipState) {
            this.mLastFlipTime = sensorEvent.timestamp;
        }
        long j = sensorEvent.timestamp - this.mLastFlipTime;
        switch (this.mFlipState) {
            case -1:
                if (j > MINIMUM_UP_DOWN_DURATION && this.mTriggerState == 1) {
                    MPLog.m307v(LOGTAG, "Flip gesture completed");
                    this.mTriggerState = 0;
                    this.mListener.onFlipGesture();
                    return;
                }
                return;
            case 0:
                if (j > MINIMUM_CANCEL_DURATION && this.mTriggerState != 0) {
                    MPLog.m307v(LOGTAG, "Flip gesture abandoned");
                    this.mTriggerState = 0;
                    return;
                }
                return;
            case 1:
                if (j > MINIMUM_UP_DOWN_DURATION && this.mTriggerState == 0) {
                    MPLog.m307v(LOGTAG, "Flip gesture begun");
                    this.mTriggerState = 1;
                    return;
                }
                return;
            default:
                return;
        }
    }
}
