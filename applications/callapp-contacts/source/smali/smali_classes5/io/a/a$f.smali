.class final Lio/a/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lio/a/a;


# direct methods
.method private constructor <init>(Lio/a/a;)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lio/a/a$f;->a:Lio/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/a/a;Lio/a/a$1;)V
    .locals 0

    .line 1036
    invoke-direct {p0, p1}, Lio/a/a$f;-><init>(Lio/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/a/a;)V
    .locals 2

    .line 1039
    iget-object v0, p0, Lio/a/a$f;->a:Lio/a/a;

    instance-of v1, v0, Lio/a/a$a;

    if-eqz v1, :cond_0

    .line 1041
    check-cast v0, Lio/a/a$a;

    invoke-virtual {p1}, Lio/a/a;->e()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/a/a$a;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 1043
    :cond_0
    invoke-virtual {v0}, Lio/a/a;->g()V

    return-void
.end method
