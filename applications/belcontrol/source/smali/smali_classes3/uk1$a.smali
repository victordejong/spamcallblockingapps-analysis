.class public final Luk1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lok1;)V
    .locals 0

    invoke-direct {p0}, Luk1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Luk1;
    .locals 1

    new-instance v0, Luk1;

    invoke-direct {v0, p1, p2, p3}, Luk1;-><init>(III)V

    return-object v0
.end method
