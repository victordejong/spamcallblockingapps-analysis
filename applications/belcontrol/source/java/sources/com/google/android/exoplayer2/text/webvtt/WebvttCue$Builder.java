package com.google.android.exoplayer2.text.webvtt;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/webvtt/WebvttCue$Builder.class */
public class WebvttCue$Builder {
    private static final String TAG = "WebvttCueBuilder";
    private long endTime;
    private float line;
    private int lineAnchor;
    private int lineType;
    private float position;
    private int positionAnchor;
    private long startTime;
    private SpannableStringBuilder text;
    private Layout.Alignment textAlignment;
    private float width;

    public WebvttCue$Builder() {
        reset();
    }

    private WebvttCue$Builder derivePositionAnchorFromAlignment() {
        Layout.Alignment alignment = this.textAlignment;
        if (alignment == null) {
            this.positionAnchor = Integer.MIN_VALUE;
        } else {
            int i = WebvttCue$1.$SwitchMap$android$text$Layout$Alignment[alignment.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    this.positionAnchor = 1;
                } else if (i != 3) {
                    Log.w(TAG, "Unrecognized alignment: " + this.textAlignment);
                } else {
                    this.positionAnchor = 2;
                }
            }
            this.positionAnchor = 0;
        }
        return this;
    }

    public WebvttCue build() {
        if (this.position != Float.MIN_VALUE && this.positionAnchor == Integer.MIN_VALUE) {
            derivePositionAnchorFromAlignment();
        }
        return new WebvttCue(this.startTime, this.endTime, this.text, this.textAlignment, this.line, this.lineType, this.lineAnchor, this.position, this.positionAnchor, this.width);
    }

    public void reset() {
        this.startTime = 0L;
        this.endTime = 0L;
        this.text = null;
        this.textAlignment = null;
        this.line = Float.MIN_VALUE;
        this.lineType = Integer.MIN_VALUE;
        this.lineAnchor = Integer.MIN_VALUE;
        this.position = Float.MIN_VALUE;
        this.positionAnchor = Integer.MIN_VALUE;
        this.width = Float.MIN_VALUE;
    }

    public WebvttCue$Builder setEndTime(long j) {
        this.endTime = j;
        return this;
    }

    public WebvttCue$Builder setLine(float f) {
        this.line = f;
        return this;
    }

    public WebvttCue$Builder setLineAnchor(int i) {
        this.lineAnchor = i;
        return this;
    }

    public WebvttCue$Builder setLineType(int i) {
        this.lineType = i;
        return this;
    }

    public WebvttCue$Builder setPosition(float f) {
        this.position = f;
        return this;
    }

    public WebvttCue$Builder setPositionAnchor(int i) {
        this.positionAnchor = i;
        return this;
    }

    public WebvttCue$Builder setStartTime(long j) {
        this.startTime = j;
        return this;
    }

    public WebvttCue$Builder setText(SpannableStringBuilder spannableStringBuilder) {
        this.text = spannableStringBuilder;
        return this;
    }

    public WebvttCue$Builder setTextAlignment(Layout.Alignment alignment) {
        this.textAlignment = alignment;
        return this;
    }

    public WebvttCue$Builder setWidth(float f) {
        this.width = f;
        return this;
    }
}
