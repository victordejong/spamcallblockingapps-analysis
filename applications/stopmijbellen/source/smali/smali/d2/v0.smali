.class public Ld2/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/u0;


# direct methods
.method public constructor <init>(Ld2/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/v0;->a:Ld2/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->g()V

    .line 2
    iget-object v0, p0, Ld2/v0;->a:Ld2/u0;

    invoke-virtual {v0}, Ld2/u0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ld2/v0;->a:Ld2/u0;

    invoke-virtual {v0}, Ld2/u0;->j()V

    :cond_0
    return-void
.end method
