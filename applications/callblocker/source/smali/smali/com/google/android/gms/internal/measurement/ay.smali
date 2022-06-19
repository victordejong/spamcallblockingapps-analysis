.class final synthetic Lcom/google/android/gms/internal/measurement/ay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/bb;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/av;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/av;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ay;->a:Lcom/google/android/gms/internal/measurement/av;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ay;->a:Lcom/google/android/gms/internal/measurement/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/av;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
