.class public final Lb91$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lta1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lta1;)V
    .locals 0

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lb91;->t(Landroid/content/Context;)V

    return-void
.end method
