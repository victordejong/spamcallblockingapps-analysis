.class public final Lcom/google/android/gms/internal/measurement/la;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/c4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/c4<",
        "Lcom/google/android/gms/internal/measurement/ma;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/measurement/la;


# instance fields
.field private final e:Lcom/google/android/gms/internal/measurement/c4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/c4<",
            "Lcom/google/android/gms/internal/measurement/ma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/la;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/la;->d:Lcom/google/android/gms/internal/measurement/la;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/na;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/na;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/e4;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/c4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/e4;->a(Lcom/google/android/gms/internal/measurement/c4;)Lcom/google/android/gms/internal/measurement/c4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/la;->e:Lcom/google/android/gms/internal/measurement/c4;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/la;->d:Lcom/google/android/gms/internal/measurement/la;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/la;->e()Lcom/google/android/gms/internal/measurement/ma;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ma;->zza()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/la;->d:Lcom/google/android/gms/internal/measurement/la;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/la;->e()Lcom/google/android/gms/internal/measurement/ma;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ma;->b()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/la;->d:Lcom/google/android/gms/internal/measurement/la;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/la;->e()Lcom/google/android/gms/internal/measurement/ma;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ma;->c()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/la;->d:Lcom/google/android/gms/internal/measurement/la;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/la;->e()Lcom/google/android/gms/internal/measurement/ma;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ma;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final e()Lcom/google/android/gms/internal/measurement/ma;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/la;->e:Lcom/google/android/gms/internal/measurement/c4;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/c4;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ma;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/la;->e()Lcom/google/android/gms/internal/measurement/ma;

    move-result-object v0

    return-object v0
.end method
