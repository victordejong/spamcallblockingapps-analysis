.class final Lorg/mistergroup/shouldianswer/components/a/e$c$1;
.super Ljava/lang/Object;
.source "ContactsAdapter.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/components/a/e$c;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/components/a/e$c$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/e$c$1;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/a/e$c$1;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/a/e$c$1;->a:Lorg/mistergroup/shouldianswer/components/a/e$c$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;Lorg/mistergroup/shouldianswer/components/a/a;)I
    .locals 2

    const-string v0, "contactItem"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 233
    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result p1

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    check-cast p2, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/a/e$c$1;->a(Lorg/mistergroup/shouldianswer/components/a/a;Lorg/mistergroup/shouldianswer/components/a/a;)I

    move-result p1

    return p1
.end method
