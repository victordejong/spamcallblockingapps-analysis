.class final Landroidx/h/b/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/h/b/d;->d(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroidx/h/b/d;


# direct methods
.method constructor <init>(Landroidx/h/b/d;Ljava/lang/Object;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/h/b/d$3;->b:Landroidx/h/b/d;

    iput-object p2, p0, Landroidx/h/b/d$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/h/b/d$3;->b:Landroidx/h/b/d;

    iget-object v1, p0, Landroidx/h/b/d$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/h/b/d;->e(Ljava/lang/Object;)V

    return-void
.end method
