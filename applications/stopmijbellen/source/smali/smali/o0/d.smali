.class public Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/e;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/d;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo0/f;ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_1

    and-int/2addr p2, v2

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object p2, p1, Lo0/f;->a:Lo0/f$c;

    invoke-interface {p2}, Lo0/f$c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object p2, p1, Lo0/f;->a:Lo0/f$c;

    invoke-interface {p2}, Lo0/f$c;->a()Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v0

    :goto_0
    const-string v0, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 6
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "InputConnectionCompat"

    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 7
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 8
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 9
    iget-object v0, p1, Lo0/f;->a:Lo0/f$c;

    invoke-interface {v0}, Lo0/f$c;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 10
    new-instance v3, Landroid/content/ClipData$Item;

    .line 11
    iget-object v4, p1, Lo0/f;->a:Lo0/f$c;

    invoke-interface {v4}, Lo0/f$c;->b()Landroid/net/Uri;

    move-result-object v4

    .line 12
    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v0, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/4 v0, 0x2

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_2

    .line 14
    new-instance v3, Lm0/c$a;

    invoke-direct {v3, p2, v0}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    goto :goto_2

    .line 15
    :cond_2
    new-instance v3, Lm0/c$c;

    invoke-direct {v3, p2, v0}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    .line 16
    :goto_2
    iget-object p1, p1, Lo0/f;->a:Lo0/f$c;

    invoke-interface {p1}, Lo0/f$c;->d()Landroid/net/Uri;

    move-result-object p1

    .line 17
    invoke-interface {v3, p1}, Lm0/c$b;->a(Landroid/net/Uri;)V

    .line 18
    invoke-interface {v3, p3}, Lm0/c$b;->setExtras(Landroid/os/Bundle;)V

    .line 19
    invoke-interface {v3}, Lm0/c$b;->build()Lm0/c;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lo0/d;->a:Landroid/view/View;

    invoke-static {p2, p1}, Lm0/v;->q(Landroid/view/View;Lm0/c;)Lm0/c;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
