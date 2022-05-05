package com.tmobile.tmoid.helperlib.sit;

import com.tmobile.tmoid.helperlib.IAMException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitException.class */
public class SitException extends IAMException {
    protected String description = null;

    public SitException() {
    }

    public SitException(String str) {
        super(str);
    }

    public SitException(Throwable th) {
        super(th);
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }
}
