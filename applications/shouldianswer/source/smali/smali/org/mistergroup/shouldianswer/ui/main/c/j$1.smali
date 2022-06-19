.class public final Lorg/mistergroup/shouldianswer/ui/main/c/j$1;
.super Landroid/database/ContentObserver;
.source "LogsDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/j;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$1;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 65
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$1;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "LogsDataSourceCallLog.CallLogObserver.onChange"

    invoke-virtual {p1, v0, p2}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$1;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j;Z)V

    return-void
.end method
