.class public final Lcom/callapp/contacts/util/CallLogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Date;

.field private final d:J

.field private final e:J


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/Date;JJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/callapp/contacts/util/CallLogEntry;->a:I

    .line 14
    iput-object p2, p0, Lcom/callapp/contacts/util/CallLogEntry;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/callapp/contacts/util/CallLogEntry;->c:Ljava/util/Date;

    .line 16
    iput-wide p4, p0, Lcom/callapp/contacts/util/CallLogEntry;->d:J

    .line 17
    iput-wide p6, p0, Lcom/callapp/contacts/util/CallLogEntry;->e:J

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/callapp/contacts/util/CallLogEntry;->d:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/callapp/contacts/util/CallLogEntry;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/util/CallLogEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime()Ljava/util/Date;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/util/CallLogEntry;->c:Ljava/util/Date;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/callapp/contacts/util/CallLogEntry;->a:I

    return v0
.end method
