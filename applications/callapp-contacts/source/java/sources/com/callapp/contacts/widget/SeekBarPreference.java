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

    /* renamed from: a */
    private SeekBar f28887a;

    /* renamed from: b */
    private int f28888b;

    /* renamed from: c */
    private final int f28889c;

    /* renamed from: d */
    private int f28890d;

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
        this.f28890d = 0;
        this.f28888b = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "max", 100);
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "defaultValue", 0);
        this.f28889c = attributeIntValue;
        setDefaultValue(Integer.valueOf(attributeIntValue));
        SeekBar seekBar = new SeekBar(context);
        this.f28887a = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        ViewParent parent = this.f28887a.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this.f28887a);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = 0;
        while (true) {
            if (i >= viewGroup.getChildCount()) {
                break;
            } else if (viewGroup.getChildAt(i) instanceof RelativeLayout) {
                RelativeLayout relativeLayout = (RelativeLayout) viewGroup.getChildAt(i);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(12, this.f28887a.getId());
                SeekBar seekBar = this.f28887a;
                seekBar.setPadding(seekBar.getPaddingLeft(), (int) Activities.m27699a(30.0f), this.f28887a.getPaddingRight(), this.f28887a.getPaddingBottom());
                relativeLayout.addView(this.f28887a, layoutParams);
                break;
            } else {
                i++;
            }
        }
        this.f28887a.setProgress(this.f28890d);
        this.f28887a.setMax(this.f28888b);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        persistInt(i);
        this.f28890d = i;
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        super.onSetInitialValue(z, obj);
        int intValue = obj == null ? 0 : ((Integer) obj).intValue();
        if (!z) {
            this.f28890d = intValue;
            return;
        }
        int i = intValue;
        if (shouldPersist()) {
            i = getPersistedInt(intValue);
        }
        this.f28890d = i;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
