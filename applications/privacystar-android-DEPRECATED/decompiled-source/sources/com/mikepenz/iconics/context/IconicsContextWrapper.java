package com.mikepenz.iconics.context;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.view.LayoutInflater;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/IconicsContextWrapper.class */
public class IconicsContextWrapper extends ContextWrapper {
    private LayoutInflater mInflater;

    private IconicsContextWrapper(Context context) {
        super(context);
    }

    public static ContextWrapper wrap(Context context) {
        return new IconicsContextWrapper(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return super.getResources();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return super.getSystemService(str);
        }
        if (this.mInflater == null) {
            this.mInflater = new InternalLayoutInflater(LayoutInflater.from(getBaseContext()), this, false);
        }
        return this.mInflater;
    }
}
