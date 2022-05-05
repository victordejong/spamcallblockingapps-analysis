package com.privacystar.core.service;

import com.privacystar.core.data.activity_log.LogExpandedAction;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/IViewClickCallback.class */
public interface IViewClickCallback<T> {
    void onViewClick(T t);

    boolean onViewLongClick(T t);

    void onViewSpecialClick(T t, int i, LogExpandedAction logExpandedAction);
}
