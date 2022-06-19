.class public abstract Lcom/google/android/gms/internal/measurement/v5;
.super Lcom/google/android/gms/internal/measurement/x5;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/v5<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/x5<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/z6;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/measurement/q5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/x5;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->a()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v5;->zza:Lcom/google/android/gms/internal/measurement/q5;

    return-void
.end method
