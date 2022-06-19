.class public final synthetic Lo8/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic a:Lo8/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo8/g;

    invoke-direct {v0}, Lo8/g;-><init>()V

    sput-object v0, Lo8/g;->a:Lo8/g;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk8/d;-><init>(I)V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
