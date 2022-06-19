.class public abstract Lcom/android/a/a/a;
.super Ljava/lang/Object;
.source "InstallReferrerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/a/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/a/a/a$a;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/android/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/a/a/a$a;-><init>(Landroid/content/Context;Lcom/android/a/a/a$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/android/a/a/d;
.end method

.method public abstract a(Lcom/android/a/a/c;)V
.end method
