.class public final synthetic Lpf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcarbon/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf0;->a:Lcarbon/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lpf0;->a:Lcarbon/widget/LinearLayout;

    invoke-static {v0}, Lhh0;->e(Lcarbon/widget/LinearLayout;)V

    return-void
.end method
