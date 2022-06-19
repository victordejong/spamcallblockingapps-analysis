.class public final synthetic Lf8/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic b:Lf8/k;

.field public static final synthetic c:Lf8/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lf8/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf8/k;-><init>(I)V

    sput-object v0, Lf8/k;->b:Lf8/k;

    new-instance v0, Lf8/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf8/k;-><init>(I)V

    sput-object v0, Lf8/k;->c:Lf8/k;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf8/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p2, p0, Lf8/k;->a:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p2, Lcom/mglab/scm/MainActivity;->v:I

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 2
    :goto_0
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/w;

    const-string v0, "faq"

    invoke-direct {p2, v0}, Lk8/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
