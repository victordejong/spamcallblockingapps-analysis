.class public abstract Lcom/google/android/gms/internal/measurement/gj;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/gj<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/gl<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/measurement/gd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gl;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gd;->a()Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/gj;->zza:Lcom/google/android/gms/internal/measurement/gd;

    return-void
.end method
