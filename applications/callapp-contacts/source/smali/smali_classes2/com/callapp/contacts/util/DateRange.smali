.class public Lcom/callapp/contacts/util/DateRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/callapp/contacts/util/DateRange;->a:J

    .line 9
    iput-wide p3, p0, Lcom/callapp/contacts/util/DateRange;->b:J

    return-void
.end method


# virtual methods
.method public getEndDate()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/callapp/contacts/util/DateRange;->b:J

    return-wide v0
.end method

.method public getStartDate()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/callapp/contacts/util/DateRange;->a:J

    return-wide v0
.end method
