.class public abstract Lcom/google/android/gms/internal/ads/dcw$b;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/dcw$b",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dcw",
        "<TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# instance fields
.field protected zzhxy:Lcom/google/android/gms/internal/ads/dcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dcl",
            "<",
            "Lcom/google/android/gms/internal/ads/dcw$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcl;->a()Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$b;->zzhxy:Lcom/google/android/gms/internal/ads/dcl;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/dcl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<",
            "Lcom/google/android/gms/internal/ads/dcw$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$b;->zzhxy:Lcom/google/android/gms/internal/ads/dcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$b;->zzhxy:Lcom/google/android/gms/internal/ads/dcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$b;->zzhxy:Lcom/google/android/gms/internal/ads/dcl;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$b;->zzhxy:Lcom/google/android/gms/internal/ads/dcl;

    return-object v0
.end method
