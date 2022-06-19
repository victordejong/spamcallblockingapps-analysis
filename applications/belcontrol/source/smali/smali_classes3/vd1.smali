.class public final synthetic Lvd1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Loe1$d;


# direct methods
.method public synthetic constructor <init>(Loe1$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd1;->a:Loe1$d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lvd1;->a:Loe1$d;

    invoke-static {v0, p1, p2}, Loe1;->E(Loe1$d;Landroid/content/DialogInterface;I)V

    return-void
.end method
