.class final synthetic Lcom/google/android/gms/internal/measurement/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/dl;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/dj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/dj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/dh;->a:Lcom/google/android/gms/internal/measurement/dj;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dh;->a:Lcom/google/android/gms/internal/measurement/dj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dj;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
