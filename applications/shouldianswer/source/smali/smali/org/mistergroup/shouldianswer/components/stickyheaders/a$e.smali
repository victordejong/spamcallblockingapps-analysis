.class public Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;
.source "SectioningAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 129
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;->a:I

    return-void
.end method
