.class final Landroidx/c/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:Landroidx/c/a/a$b;

.field static final b:Landroidx/c/a/a$b;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 243
    sget-boolean v0, Landroidx/c/a/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    sput-object v1, Landroidx/c/a/a$b;->b:Landroidx/c/a/a$b;

    .line 245
    sput-object v1, Landroidx/c/a/a$b;->a:Landroidx/c/a/a$b;

    return-void

    .line 247
    :cond_0
    new-instance v0, Landroidx/c/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/c/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/c/a/a$b;->b:Landroidx/c/a/a$b;

    .line 248
    new-instance v0, Landroidx/c/a/a$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/c/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/c/a/a$b;->a:Landroidx/c/a/a$b;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-boolean p1, p0, Landroidx/c/a/a$b;->c:Z

    .line 258
    iput-object p2, p0, Landroidx/c/a/a$b;->d:Ljava/lang/Throwable;

    return-void
.end method
