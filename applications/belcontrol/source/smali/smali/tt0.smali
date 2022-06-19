.class public final synthetic Ltt0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lrt0;

.field public final synthetic b:Lvt0;


# direct methods
.method public synthetic constructor <init>(Lrt0;Lvt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltt0;->a:Lrt0;

    iput-object p2, p0, Ltt0;->b:Lvt0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ltt0;->a:Lrt0;

    iget-object v1, p0, Ltt0;->b:Lvt0;

    invoke-static {v0, v1, p1}, Lwt0;->c(Lrt0;Lvt0;Landroid/view/View;)V

    return-void
.end method
