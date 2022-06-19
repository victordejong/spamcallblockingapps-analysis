.class public final Lcom/google/android/gms/internal/measurement/in;
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
        "Lcom/google/android/gms/internal/measurement/im;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/measurement/in;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/im;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/in;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/in;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/ip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ip;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/in;-><init>(Lcom/google/android/gms/internal/measurement/by;)V

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/im;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/by;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/in;->b:Lcom/google/android/gms/internal/measurement/by;

    .line 10
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/im;->a()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/im;->b()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/im;->c()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/im;->d()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/im;->e()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/im;->f()Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/in;->a:Lcom/google/android/gms/internal/measurement/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/im;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/in;->b:Lcom/google/android/gms/internal/measurement/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/by;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/im;

    .line 15
    return-object v0
.end method
