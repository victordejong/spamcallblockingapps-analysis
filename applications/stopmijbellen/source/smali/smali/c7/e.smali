.class public Lc7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz6/a;


# static fields
.field public static f:Lc7/e;


# instance fields
.field public a:F

.field public final b:Ly/d;

.field public final c:Li4/d;

.field public d:Lz6/b;

.field public e:Lc7/a;


# direct methods
.method public constructor <init>(Ly/d;Li4/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc7/e;->a:F

    iput-object p1, p0, Lc7/e;->b:Ly/d;

    iput-object p2, p0, Lc7/e;->c:Li4/d;

    return-void
.end method

.method public static a()Lc7/e;
    .locals 3

    sget-object v0, Lc7/e;->f:Lc7/e;

    if-nez v0, :cond_0

    new-instance v0, Li4/d;

    invoke-direct {v0}, Li4/d;-><init>()V

    new-instance v1, Ly/d;

    invoke-direct {v1}, Ly/d;-><init>()V

    new-instance v2, Lc7/e;

    invoke-direct {v2, v1, v0}, Lc7/e;-><init>(Ly/d;Li4/d;)V

    sput-object v2, Lc7/e;->f:Lc7/e;

    :cond_0
    sget-object v0, Lc7/e;->f:Lc7/e;

    return-object v0
.end method
