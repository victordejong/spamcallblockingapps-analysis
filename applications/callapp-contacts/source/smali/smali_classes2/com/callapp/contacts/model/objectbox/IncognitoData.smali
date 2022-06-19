.class public Lcom/callapp/contacts/model/objectbox/IncognitoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field protected id:J

.field private phoneOrIdKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;->id:J

    .line 20
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;->id:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;->id:J

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method
