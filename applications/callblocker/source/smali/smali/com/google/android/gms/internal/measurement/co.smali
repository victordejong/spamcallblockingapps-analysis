.class public Lcom/google/android/gms/internal/measurement/co;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/measurement/fn;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/fx",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/dp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dp;->a()Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/co;->a:Lcom/google/android/gms/internal/measurement/dp;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
