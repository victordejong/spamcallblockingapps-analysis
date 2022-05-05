package com.privacystar.core.service;

import com.privacystar.core.util.CallLogUtil;
import java.util.ArrayList;
@FunctionalInterface
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/ICallLogCallback.class */
public interface ICallLogCallback {
    void getLogPageCallback(int i, int i2, ArrayList<CallLogUtil.BasicLogInfo> arrayList);
}
