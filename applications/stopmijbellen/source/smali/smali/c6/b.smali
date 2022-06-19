.class public final Lc6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lc6/a;->f:Lg6/a;

    .line 2
    invoke-static {}, Lt4/c;->b()Lt4/c;

    move-result-object v0

    const-class v1, Lc6/a;

    .line 3
    invoke-virtual {v0}, Lt4/c;->a()V

    .line 4
    iget-object v0, v0, Lt4/c;->d:Lz4/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lc6/a;

    return-void
.end method
