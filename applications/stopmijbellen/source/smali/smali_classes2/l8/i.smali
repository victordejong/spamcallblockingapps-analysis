.class public final synthetic Ll8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Ll8/w;


# direct methods
.method public synthetic constructor <init>(Ll8/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/i;->a:Ll8/w;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Ll8/i;->a:Ll8/w;

    const/16 v0, 0xd

    .line 1
    invoke-virtual {p1, v0, p2}, Ll8/w;->l(IZ)V

    return-void
.end method
