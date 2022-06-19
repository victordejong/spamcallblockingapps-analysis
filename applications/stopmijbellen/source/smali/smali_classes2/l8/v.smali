.class public final synthetic Ll8/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ll8/w;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ll8/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/v;->a:Ll8/w;

    iput p2, p0, Ll8/v;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Ll8/v;->a:Ll8/w;

    iget v0, p0, Ll8/v;->b:I

    .line 1
    iput v0, p1, Ll8/w;->c:I

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v1, Lk8/z;

    invoke-direct {v1, v0}, Lk8/z;-><init>(I)V

    invoke-virtual {p1, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method
