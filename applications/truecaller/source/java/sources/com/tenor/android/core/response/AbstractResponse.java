package com.tenor.android.core.response;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/response/AbstractResponse.class */
public abstract class AbstractResponse implements Serializable {
    private static final long serialVersionUID = 2769940807942589161L;
    private String error;

    public String getError() {
        return StringConstant.getOrEmpty(this.error);
    }

    public boolean hasError() {
        return !TextUtils.isEmpty(this.error);
    }
}
