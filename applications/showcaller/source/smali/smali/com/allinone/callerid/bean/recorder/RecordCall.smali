.class public Lcom/allinone/callerid/bean/recorder/RecordCall;
.super Ljava/lang/Object;
.source "RecordCall.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "RrcordCall"
.end annotation


# static fields
.field public static final PHONESTATUSANSWER:I = 0x6e

.field public static final PHONESTATUSCALL:I = 0x6f

.field public static final harassstatusHARASS:I = 0x79

.field public static final harassstatusORDINARY:I = 0x78

.field public static final harassstatusUNIDENTIFICATION:I = 0x7a

.field public static final numbertypeCONTACT:I = 0x65

.field public static final numbertypeSTRANGE:I = 0x64


# instance fields
.field private callid:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "callid"
    .end annotation
.end field

.field private callidint:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "callidint"
    .end annotation
.end field

.field private endtime:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "endtime"
    .end annotation
.end field

.field private filename:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "filename"
    .end annotation
.end field

.field private filepath:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "filepath"
    .end annotation
.end field

.field private filesize:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "filesize"
    .end annotation
.end field

.field private filesizestring:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "filesizestring"
    .end annotation
.end field

.field private harassstatus:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "harassstatus"
    .end annotation
.end field

.field private hearddata:Ljava/lang/String;

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
    .end annotation
.end field

.field private isupload:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isupload"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "number"
    .end annotation
.end field

.field private numbertype:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "numbertype"
    .end annotation
.end field

.field private phoneType:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "phoneType"
    .end annotation
.end field

.field private phonestatus:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "phonestatus"
    .end annotation
.end field

.field private recordcount:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "recordcount"
    .end annotation
.end field

.field private recordtime:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "recordtime"
    .end annotation
.end field

.field private recordtimems:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "recordtimems"
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "remark"
    .end annotation
.end field

.field private starttime:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "starttime"
    .end annotation
.end field

.field private timespan:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "timespan"
    .end annotation
.end field

.field private timespanstring:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "timespanstring"
    .end annotation
.end field

.field private uploaddate:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "uploaddate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->endtime:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filesize:J

    return-wide v0
.end method

.method public getFilesizestring()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filesizestring:Ljava/lang/String;

    return-object v0
.end method

.method public getHarassstatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->harassstatus:I

    return v0
.end method

.method public getHearddata()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->hearddata:Ljava/lang/String;

    return-object v0
.end method

.method public getIsupload()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->isupload:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumbertype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->numbertype:I

    return v0
.end method

.method public getPhoneType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->phoneType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonestatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->phonestatus:I

    return v0
.end method

.method public getRecordcount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordcount:I

    return v0
.end method

.method public getRecordtime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordtime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordtimems()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordtimems:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStarttime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->starttime:J

    return-wide v0
.end method

.method public getTimespan()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->timespan:J

    return-wide v0
.end method

.method public getTimespanstring()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->timespanstring:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaddate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->uploaddate:Ljava/lang/String;

    return-object v0
.end method

.method public setEndtime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->endtime:J

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filepath:Ljava/lang/String;

    return-void
.end method

.method public setFilesize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filesize:J

    return-void
.end method

.method public setFilesizestring(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filesizestring:Ljava/lang/String;

    return-void
.end method

.method public setHarassstatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->harassstatus:I

    return-void
.end method

.method public setHearddata(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->hearddata:Ljava/lang/String;

    return-void
.end method

.method public setIsupload(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->isupload:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->number:Ljava/lang/String;

    return-void
.end method

.method public setNumbertype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->numbertype:I

    return-void
.end method

.method public setPhoneType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->phoneType:Ljava/lang/String;

    return-void
.end method

.method public setPhonestatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->phonestatus:I

    return-void
.end method

.method public setRecordcount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordcount:I

    return-void
.end method

.method public setRecordtime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordtime:Ljava/lang/String;

    return-void
.end method

.method public setRecordtimems(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordtimems:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->remark:Ljava/lang/String;

    return-void
.end method

.method public setStarttime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->starttime:J

    return-void
.end method

.method public setTimespan(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->timespan:J

    return-void
.end method

.method public setTimespanstring(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->timespanstring:Ljava/lang/String;

    return-void
.end method

.method public setUploaddate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->uploaddate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordCall{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phonestatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->phonestatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timespan="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->timespan:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timespanstring=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->timespanstring:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", starttime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->starttime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", recordtime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordtime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recordtimems=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordtimems:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", endtime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->endtime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uploaddate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->uploaddate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filesize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filesize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", filesizestring=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filesizestring:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", harassstatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->harassstatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->remark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isupload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->isupload:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numbertype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->numbertype:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filepath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filename=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->filename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->callid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callidint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->callidint:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", recordcount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->recordcount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->phoneType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hearddata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/recorder/RecordCall;->hearddata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
