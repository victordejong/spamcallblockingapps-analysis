.class public final Lk8$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lk8$c;


# direct methods
.method public constructor <init>([Lk8$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8$b;->a:[Lk8$c;

    return-void
.end method


# virtual methods
.method public a()[Lk8$c;
    .locals 1

    iget-object v0, p0, Lk8$b;->a:[Lk8$c;

    return-object v0
.end method
