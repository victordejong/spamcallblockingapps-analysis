.class public abstract Lcom/google/firebase/crashlytics/d/h/v$d$d$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/d/h/v$d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/d/h/v$d$d$a$a;,
        Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/d/h/v$d$d$a$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/k$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Boolean;
.end method

.method public abstract c()Lcom/google/firebase/crashlytics/d/h/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/crashlytics/d/h/w<",
            "Lcom/google/firebase/crashlytics/d/h/v$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b;
.end method

.method public abstract e()I
.end method

.method public abstract f()Lcom/google/firebase/crashlytics/d/h/v$d$d$a$a;
.end method
