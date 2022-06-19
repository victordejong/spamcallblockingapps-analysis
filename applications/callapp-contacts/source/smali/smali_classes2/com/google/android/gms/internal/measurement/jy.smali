.class public final Lcom/google/android/gms/internal/measurement/jy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/ek<",
        "Lcom/google/android/gms/internal/measurement/jz;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/jy;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ek<",
            "Lcom/google/android/gms/internal/measurement/jz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/jy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/jy;->a:Lcom/google/android/gms/internal/measurement/jy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ka;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eo;->a(Lcom/google/android/gms/internal/measurement/ek;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jy;->b:Lcom/google/android/gms/internal/measurement/ek;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/jy;->a:Lcom/google/android/gms/internal/measurement/jy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jy;->g()Lcom/google/android/gms/internal/measurement/jz;

    const/4 v0, 0x1

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/jy;->a:Lcom/google/android/gms/internal/measurement/jy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jy;->g()Lcom/google/android/gms/internal/measurement/jz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/jz;->a()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/jy;->a:Lcom/google/android/gms/internal/measurement/jy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jy;->g()Lcom/google/android/gms/internal/measurement/jz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/jz;->b()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/jy;->a:Lcom/google/android/gms/internal/measurement/jy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jy;->g()Lcom/google/android/gms/internal/measurement/jz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/jz;->c()Z

    move-result v0

    return v0
.end method

.method public static f()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/jy;->a:Lcom/google/android/gms/internal/measurement/jy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jy;->g()Lcom/google/android/gms/internal/measurement/jz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/jz;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private g()Lcom/google/android/gms/internal/measurement/jz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jy;->b:Lcom/google/android/gms/internal/measurement/ek;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ek;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/jz;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jy;->g()Lcom/google/android/gms/internal/measurement/jz;

    move-result-object v0

    return-object v0
.end method
