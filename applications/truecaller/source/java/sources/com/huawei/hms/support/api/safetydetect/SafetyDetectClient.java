package com.huawei.hms.support.api.safetydetect;

import com.huawei.hmf.tasks.Task;
import com.huawei.hms.support.api.entity.safetydetect.MaliciousAppsListResp;
import com.huawei.hms.support.api.entity.safetydetect.RiskTokenResponse;
import com.huawei.hms.support.api.entity.safetydetect.SysIntegrityRequest;
import com.huawei.hms.support.api.entity.safetydetect.SysIntegrityResp;
import com.huawei.hms.support.api.entity.safetydetect.UrlCheckResponse;
import com.huawei.hms.support.api.entity.safetydetect.UserDetectResponse;
import com.huawei.hms.support.api.entity.safetydetect.VerifyAppsCheckEnabledResp;
import com.huawei.hms.support.api.entity.safetydetect.WifiDetectResponse;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/safetydetect/SafetyDetectClient.class */
public interface SafetyDetectClient {
    Task<VerifyAppsCheckEnabledResp> enableAppsCheck();

    Task<MaliciousAppsListResp> getMaliciousAppsList();

    Task<RiskTokenResponse> getRiskToken();

    Task<WifiDetectResponse> getWifiDetectStatus();

    Task<Void> initAntiFraud(String str);

    Task<Void> initUrlCheck();

    Task<Void> initUserDetect();

    Task<VerifyAppsCheckEnabledResp> isVerifyAppsCheck();

    Task<Void> releaseAntiFraud();

    Task<Void> shutdownUrlCheck();

    Task<Void> shutdownUserDetect();

    Task<SysIntegrityResp> sysIntegrity(SysIntegrityRequest sysIntegrityRequest);

    Task<SysIntegrityResp> sysIntegrity(byte[] bArr, String str);

    Task<UrlCheckResponse> urlCheck(String str, String str2, int... iArr);

    Task<UserDetectResponse> userDetection(String str);
}
