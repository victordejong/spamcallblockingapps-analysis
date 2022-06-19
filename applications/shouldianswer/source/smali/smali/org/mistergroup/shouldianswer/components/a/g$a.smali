.class final Lorg/mistergroup/shouldianswer/components/a/g$a;
.super Ljava/lang/Object;
.source "ContactsLiveData.kt"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/components/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/g$a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/a/g$a;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/a/g$a;->a:Lorg/mistergroup/shouldianswer/components/a/g$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 21
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p2, 0x0

    const-string v0, "ContactsLiveData phoneContactsObserver changed!"

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1, p2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 22
    sget-object p1, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/g;->e()V

    return-void
.end method
