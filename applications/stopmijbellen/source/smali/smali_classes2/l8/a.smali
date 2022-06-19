.class public final synthetic Ll8/a;
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

    iput-object p1, p0, Ll8/a;->a:Ll8/w;

    iput p2, p0, Ll8/a;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Ll8/a;->a:Ll8/w;

    iget v0, p0, Ll8/a;->b:I

    .line 1
    new-instance v1, Le2/g$a;

    iget-object v2, p1, Ll8/w;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Le2/g$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Ll8/w;->a:Landroid/content/Context;

    const v4, 0x7f1101bd

    .line 2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    iput-object v2, v1, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v2, 0x7f06005b

    .line 4
    invoke-virtual {v1, v2}, Le2/g$a;->l(I)Le2/g$a;

    const v2, 0x7f080118

    .line 5
    invoke-virtual {v1, v2}, Le2/g$a;->e(I)Le2/g$a;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Le2/g$a;->y:Z

    .line 7
    iput-boolean v2, v1, Le2/g$a;->z:Z

    const v2, 0x7f11018f

    .line 8
    invoke-virtual {v1, v2}, Le2/g$a;->i(I)Le2/g$a;

    const v2, 0x7f11006e

    .line 9
    invoke-virtual {v1, v2}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v1

    new-instance v2, Ll8/n;

    invoke-direct {v2, p1, v0}, Ll8/n;-><init>(Ll8/w;I)V

    .line 10
    iput-object v2, v1, Le2/g$a;->u:Le2/g$c;

    .line 11
    invoke-virtual {v1}, Le2/g$a;->j()Le2/g;

    return-void
.end method
