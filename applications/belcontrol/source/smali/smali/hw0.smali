.class public final synthetic Lhw0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lpw0;


# direct methods
.method public synthetic constructor <init>(Lpw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw0;->a:Lpw0;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lhw0;->a:Lpw0;

    invoke-virtual {v0, p1, p2}, Lpw0;->f(Landroid/widget/RadioGroup;I)V

    return-void
.end method
