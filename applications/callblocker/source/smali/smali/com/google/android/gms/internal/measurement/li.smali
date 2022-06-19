.class public final Lcom/google/android/gms/internal/measurement/li;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/by;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/by",
        "<",
        "Lcom/google/android/gms/internal/measurement/lh;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/measurement/li;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/lh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/li;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/li;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/li;->a:Lcom/google/android/gms/internal/measurement/li;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/lk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lk;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/li;-><init>(Lcom/google/android/gms/internal/measurement/by;)V

    .line 6
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/lh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/by;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/li;->b:Lcom/google/android/gms/internal/measurement/by;

    .line 4
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/li;->a:Lcom/google/android/gms/internal/measurement/li;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/li;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lh;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/li;->b:Lcom/google/android/gms/internal/measurement/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/by;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lh;

    .line 9
    return-object v0
.end method
