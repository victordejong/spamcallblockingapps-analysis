.class public final synthetic Lh8/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic a:Lh8/t;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh8/t;

    invoke-direct {v0}, Lh8/t;-><init>()V

    sput-object v0, Lh8/t;->a:Lh8/t;

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
