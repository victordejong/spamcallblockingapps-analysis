.class public Lq81$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq81$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lq81$c;->b:Ljava/lang/Long;

    iput-boolean p3, p0, Lq81$c;->c:Z

    iput-boolean p4, p0, Lq81$c;->d:Z

    iput-object p5, p0, Lq81$c;->e:Ljava/lang/String;

    return-void
.end method
