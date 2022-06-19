package io.bidmachine;

import java.util.EnumMap;
import java.util.UUID;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/SessionManager.class */
public class SessionManager {
    private static volatile SessionManager instance;
    private long pauseTime;
    private long resumeTime;
    private final EnumMap<AdsType, SessionAdParams> sessionAdParamsMap = new EnumMap<>(AdsType.class);
    private long sessionDuration;
    private String sessionId;
    private long sessionResetAfterSec;

    private SessionManager() {
        startNewSession();
    }

    public static SessionManager get() {
        SessionManager sessionManager = instance;
        SessionManager sessionManager2 = sessionManager;
        if (sessionManager == null) {
            synchronized (SessionManager.class) {
                try {
                    SessionManager sessionManager3 = instance;
                    sessionManager2 = sessionManager3;
                    if (sessionManager3 == null) {
                        sessionManager2 = new SessionManager();
                        instance = sessionManager2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sessionManager2;
    }

    public SessionAdParams getSessionAdParams(AdsType adsType) {
        SessionAdParams sessionAdParams;
        synchronized (this) {
            SessionAdParams sessionAdParams2 = this.sessionAdParamsMap.get(adsType);
            sessionAdParams = sessionAdParams2;
            if (sessionAdParams2 == null) {
                sessionAdParams = new SessionAdParams();
                this.sessionAdParamsMap.put((EnumMap<AdsType, SessionAdParams>) adsType, (AdsType) sessionAdParams);
            }
        }
        return sessionAdParams;
    }

    public int getSessionDuration() {
        if (this.resumeTime == 0) {
            return 0;
        }
        return (int) ((this.sessionDuration + (System.currentTimeMillis() - this.resumeTime)) / 1000);
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public void pause() {
        if (this.resumeTime == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.pauseTime = currentTimeMillis;
        this.sessionDuration += currentTimeMillis - this.resumeTime;
    }

    public void resume() {
        long currentTimeMillis = System.currentTimeMillis();
        this.resumeTime = currentTimeMillis;
        long j = this.sessionResetAfterSec;
        if (j > 0) {
            long j2 = this.pauseTime;
            if (j2 <= 0 || currentTimeMillis - j2 < j * 1000) {
                return;
            }
            startNewSession();
        }
    }

    public void setSessionResetAfter(long j) {
        this.sessionResetAfterSec = j;
    }

    void startNewSession() {
        this.sessionId = UUID.randomUUID().toString();
        this.sessionDuration = 0L;
        this.pauseTime = 0L;
        this.resumeTime = 0L;
        for (AdsType adsType : AdsType.values()) {
            getSessionAdParams(adsType).clear();
        }
    }
}
