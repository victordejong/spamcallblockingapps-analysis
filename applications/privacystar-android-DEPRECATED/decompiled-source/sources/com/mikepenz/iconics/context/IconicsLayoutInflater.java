package com.mikepenz.iconics.context;

import android.content.Context;
import android.support.p001v4.view.LayoutInflaterFactory;
import android.support.p004v7.app.AppCompatDelegate;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/IconicsLayoutInflater.class */
public class IconicsLayoutInflater implements LayoutInflaterFactory {
    private AppCompatDelegate appCompatDelegate;
    private final IconicsFactory mIconicsFactory = new IconicsFactory();

    public IconicsLayoutInflater(AppCompatDelegate appCompatDelegate) {
        this.appCompatDelegate = appCompatDelegate;
    }

    @Override // android.support.p001v4.view.LayoutInflaterFactory
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mIconicsFactory.onViewCreated(this.appCompatDelegate.createView(view, str, context, attributeSet), context, attributeSet);
    }
}
