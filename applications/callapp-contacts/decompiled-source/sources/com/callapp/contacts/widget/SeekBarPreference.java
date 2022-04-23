package com.callapp.contacts.widget;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SeekBarPreference.class */
public class SeekBarPreference extends Preference implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private SeekBar f16596a;

    /* renamed from: b  reason: collision with root package name */
    private int f16597b;

    /* renamed from: c  reason: collision with root package name */
    private final int f16598c;

    /* renamed from: d  reason: collision with root package name */
    private int f16599d;

    public SeekBarPreference(Context context) {
        this(context, null);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842894);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f16599d = 0;
        this.f16597b = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "max", 100);
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "defaultValue", 0);
        this.f16598c = attributeIntValue;
        setDefaultValue(Integer.valueOf(attributeIntValue));
        SeekBar seekBar = new SeekBar(context);
        this.f16596a = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        ViewParent parent = this.f16596a.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this.f16596a);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = 0;
        while (true) {
            if (i >= viewGroup.getChildCount()) {
                break;
            } else if (viewGroup.getChildAt(i) instanceof RelativeLayout) {
                RelativeLayout relativeLayout = (RelativeLayout) viewGroup.getChildAt(i);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(12, this.f16596a.getId());
                SeekBar seekBar = this.f16596a;
                seekBar.setPadding(seekBar.getPaddingLeft(), (int) Activities.a(30.0f), this.f16596a.getPaddingRight(), this.f16596a.getPaddingBottom());
                relativeLayout.addView(this.f16596a, layoutParams);
                break;
            } else {
                i++;
            }
        }
        this.f16596a.setProgress(this.f16599d);
        this.f16596a.setMax(this.f16597b);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        persistInt(i);
        this.f16599d = i;
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        super.onSetInitialValue(z, obj);
        int intValue = obj == null ? 0 : ((Integer) obj).intValue();
        if (z) {
            int i = intValue;
            if (shouldPersist()) {
                i = getPersistedInt(intValue);
            }
            this.f16599d = i;
            return;
        }
        this.f16599d = intValue;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
