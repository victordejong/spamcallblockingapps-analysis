package com.telguarder.features.rateAndFeedback;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/Reportable.class */
public interface Reportable extends Serializable {
    List<String> getAllReportablePhoneNumbers();

    String getReportableAddress();

    String getReportableName();

    String getReportablePhoneNumber();

    String getReportableWebUrl();
}
