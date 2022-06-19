.class public final Lmi$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Leh;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Leh;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi$g;->a:Leh;

    iput-wide p2, p0, Lmi$g;->b:J

    iput-wide p4, p0, Lmi$g;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Leh;JJLmi$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmi$g;-><init>(Leh;JJ)V

    return-void
.end method

.method public static synthetic a(Lmi$g;)Leh;
    .locals 0

    iget-object p0, p0, Lmi$g;->a:Leh;

    return-object p0
.end method

.method public static synthetic b(Lmi$g;)J
    .locals 2

    iget-wide v0, p0, Lmi$g;->c:J

    return-wide v0
.end method

.method public static synthetic c(Lmi$g;)J
    .locals 2

    iget-wide v0, p0, Lmi$g;->b:J

    return-wide v0
.end method
