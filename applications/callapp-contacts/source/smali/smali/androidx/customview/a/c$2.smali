.class final Landroidx/customview/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/customview/a/c;


# direct methods
.method constructor <init>(Landroidx/customview/a/c;)V
    .locals 0

    .line 340
    iput-object p1, p0, Landroidx/customview/a/c$2;->a:Landroidx/customview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 343
    iget-object v0, p0, Landroidx/customview/a/c$2;->a:Landroidx/customview/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/customview/a/c;->b(I)V

    return-void
.end method
