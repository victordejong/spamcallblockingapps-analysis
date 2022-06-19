.class public abstract Lcom/google/firebase/crashlytics/internal/common/n;
.super Ljava/lang/Object;
.source "CrashlyticsReportWithSessionId.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/d/h/v;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/b;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/b;-><init>(Lcom/google/firebase/crashlytics/d/h/v;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/firebase/crashlytics/d/h/v;
.end method

.method public abstract c()Ljava/lang/String;
.end method
