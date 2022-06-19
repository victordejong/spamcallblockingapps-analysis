.class public Lcom/google/android/gms/internal/ads/cts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cts$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cth",
        "<",
        "Lcom/google/android/gms/internal/ads/csm;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/google/android/gms/internal/ads/cts;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cts;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/gms/internal/ads/csm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/csm;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ctf;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/cts$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cts$a;-><init>(Lcom/google/android/gms/internal/ads/ctf;Lcom/google/android/gms/internal/ads/ctr;)V

    .line 5
    return-object v0
.end method
