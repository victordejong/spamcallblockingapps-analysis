.class public final Lorg/mistergroup/shouldianswer/model/ad$a;
.super Landroid/database/ContentObserver;
.source "PhoneContacts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 39
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v1, "PhoneContactsObservable contactsObserver.changed!"

    invoke-static {p1, v1, v0, p2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 40
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/mistergroup/shouldianswer/model/ad;->a(Lorg/mistergroup/shouldianswer/model/ad;Z)V

    .line 41
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ad;->countObservers()I

    move-result p1

    if-lez p1, :cond_0

    .line 42
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "PhoneContactsObservable contactsObserver.changed updateAsync"

    invoke-static {p1, v2, v0, p2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 43
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-static {p1, v1}, Lorg/mistergroup/shouldianswer/model/ad;->b(Lorg/mistergroup/shouldianswer/model/ad;Z)V

    :cond_0
    return-void
.end method
