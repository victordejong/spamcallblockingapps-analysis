.class public Lo71$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo71;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo71;


# direct methods
.method public constructor <init>(Lo71;)V
    .locals 0

    iput-object p1, p0, Lo71$a;->a:Lo71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo71$a;->a:Lo71;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo71;->a(Lo71;Z)V

    invoke-static {}, Lo71;->b()V

    return-void
.end method
