package com.rey.material.drawable;

import android.graphics.drawable.LevelListDrawable;
import com.rey.material.app.ThemeManager;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/ThemeDrawable.class */
public class ThemeDrawable extends LevelListDrawable implements ThemeManager.OnThemeChangedListener {
    private int mStyleId;

    public ThemeDrawable(int i) {
        this.mStyleId = i;
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().registerOnThemeChangedListener(this);
            initDrawables();
        }
    }

    private void initDrawables() {
        ThemeManager instance = ThemeManager.getInstance();
        int themeCount = instance.getThemeCount();
        for (int i = 0; i < themeCount; i++) {
            addLevel(i, i, instance.getContext().getResources().getDrawable(instance.getStyle(this.mStyleId, i)));
        }
        setLevel(instance.getCurrentTheme());
    }

    @Override // com.rey.material.app.ThemeManager.OnThemeChangedListener
    public void onThemeChanged(ThemeManager.OnThemeChangedEvent onThemeChangedEvent) {
        if (getLevel() != onThemeChangedEvent.theme) {
            setLevel(onThemeChangedEvent.theme);
        }
    }
}
