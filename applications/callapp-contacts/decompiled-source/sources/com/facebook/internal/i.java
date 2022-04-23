package com.facebook.internal;

import com.facebook.FacebookRequestError;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/i.class */
public final /* synthetic */ class i {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f19938a;

    static {
        int[] iArr = new int[FacebookRequestError.a.values().length];
        f19938a = iArr;
        iArr[FacebookRequestError.a.OTHER.ordinal()] = 1;
        iArr[FacebookRequestError.a.LOGIN_RECOVERABLE.ordinal()] = 2;
        iArr[FacebookRequestError.a.TRANSIENT.ordinal()] = 3;
    }
}
