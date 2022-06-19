package com.truecaller.api.services.comments.model;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments.class */
public final class GetComments extends GeneratedMessageLite<GetComments, C2960b> implements Object {
    private static final GetComments DEFAULT_INSTANCE;
    private static volatile Parser<GetComments> PARSER;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C2955a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        public static final int LANGUAGE_FIELD_NUMBER = 2;
        public static final int NUMBERTYPE_FIELD_NUMBER = 3;
        public static final int NUMBER_FIELD_NUMBER = 1;
        public static final int PAGEID_FIELD_NUMBER = 12;
        public static final int PAGESIZE_FIELD_NUMBER = 10;
        private static volatile Parser<Request> PARSER;
        public static final int SORTBY_FIELD_NUMBER = 13;
        public static final int SORTORDER_FIELD_NUMBER = 14;
        private int numberType_;
        private long pageId_;
        private int pageSize_;
        private int sortBy_;
        private int sortOrder_;
        private String number_ = "";
        private String language_ = "";

        /* renamed from: com.truecaller.api.services.comments.model.GetComments$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Request$a.class */
        public static final class C2955a extends GeneratedMessageLite.Builder<Request, C2955a> implements Object {
            public C2955a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C2955a(C2959a c2959a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void clearLanguage() {
            this.language_ = getDefaultInstance().getLanguage();
        }

        public void clearNumber() {
            this.number_ = getDefaultInstance().getNumber();
        }

        public void clearNumberType() {
            this.numberType_ = 0;
        }

        public void clearPageId() {
            this.pageId_ = 0L;
        }

        public void clearPageSize() {
            this.pageSize_ = 0;
        }

        public void clearSortBy() {
            this.sortBy_ = 0;
        }

        public void clearSortOrder() {
            this.sortOrder_ = 0;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2955a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2955a newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setLanguage(String str) {
            str.getClass();
            this.language_ = str;
        }

        public void setLanguageBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.language_ = byteString.toStringUtf8();
        }

        public void setNumber(String str) {
            str.getClass();
            this.number_ = str;
        }

        public void setNumberBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.number_ = byteString.toStringUtf8();
        }

        public void setNumberType(NumberType numberType) {
            this.numberType_ = numberType.getNumber();
        }

        public void setNumberTypeValue(int i) {
            this.numberType_ = i;
        }

        public void setPageId(long j) {
            this.pageId_ = j;
        }

        public void setPageSize(int i) {
            this.pageSize_ = i;
        }

        public void setSortBy(SortBy sortBy) {
            this.sortBy_ = sortBy.getNumber();
        }

        public void setSortByValue(int i) {
            this.sortBy_ = i;
        }

        public void setSortOrder(SortOrder sortOrder) {
            this.sortOrder_ = sortOrder.getNumber();
        }

        public void setSortOrderValue(int i) {
            this.sortOrder_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0007����\u0001\u000e\u0007������\u0001Ȉ\u0002Ȉ\u0003\f\n\u0004\f\u0002\r\f\u000e\f", new Object[]{"number_", "language_", "numberType_", "pageSize_", "pageId_", "sortBy_", "sortOrder_"});
                case 3:
                    return new Request();
                case 4:
                    return new C2955a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
                            try {
                                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                                defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                                if (defaultInstanceBasedParser3 == null) {
                                    defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                    PARSER = defaultInstanceBasedParser2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return defaultInstanceBasedParser2;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public String getLanguage() {
            return this.language_;
        }

        public ByteString getLanguageBytes() {
            return ByteString.copyFromUtf8(this.language_);
        }

        public String getNumber() {
            return this.number_;
        }

        public ByteString getNumberBytes() {
            return ByteString.copyFromUtf8(this.number_);
        }

        public NumberType getNumberType() {
            NumberType forNumber = NumberType.forNumber(this.numberType_);
            NumberType numberType = forNumber;
            if (forNumber == null) {
                numberType = NumberType.UNRECOGNIZED;
            }
            return numberType;
        }

        public int getNumberTypeValue() {
            return this.numberType_;
        }

        public long getPageId() {
            return this.pageId_;
        }

        public int getPageSize() {
            return this.pageSize_;
        }

        public SortBy getSortBy() {
            SortBy forNumber = SortBy.forNumber(this.sortBy_);
            SortBy sortBy = forNumber;
            if (forNumber == null) {
                sortBy = SortBy.UNRECOGNIZED;
            }
            return sortBy;
        }

        public int getSortByValue() {
            return this.sortBy_;
        }

        public SortOrder getSortOrder() {
            SortOrder forNumber = SortOrder.forNumber(this.sortOrder_);
            SortOrder sortOrder = forNumber;
            if (forNumber == null) {
                sortOrder = SortOrder.UNRECOGNIZED;
            }
            return sortOrder;
        }

        public int getSortOrderValue() {
            return this.sortOrder_;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C2957a> implements Object {
        public static final int COMMENTS_FIELD_NUMBER = 2;
        private static final Response DEFAULT_INSTANCE;
        public static final int NEXTPAGEID_FIELD_NUMBER = 5;
        public static final int NUMBER_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        private long nextPageId_;
        private String number_ = "";
        private Internal.ProtobufList<Comment> comments_ = GeneratedMessageLite.emptyProtobufList();

        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Response$Comment.class */
        public static final class Comment extends GeneratedMessageLite<Comment, C2956a> implements AbstractC2958b {
            public static final int ANONYMOUS_FIELD_NUMBER = 6;
            public static final int AVATARURL_FIELD_NUMBER = 3;
            private static final Comment DEFAULT_INSTANCE;
            public static final int DOWNVOTED_FIELD_NUMBER = 11;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int LANGUAGE_FIELD_NUMBER = 5;
            public static final int NAME_FIELD_NUMBER = 2;
            public static final int NUMDOWNVOTES_FIELD_NUMBER = 9;
            public static final int NUMUPVOTES_FIELD_NUMBER = 8;
            private static volatile Parser<Comment> PARSER;
            public static final int POSTEDON_FIELD_NUMBER = 7;
            public static final int TEXT_FIELD_NUMBER = 4;
            public static final int UPVOTED_FIELD_NUMBER = 10;
            private boolean anonymous_;
            private int numDownvotes_;
            private int numUpvotes_;
            private long postedOn_;
            private Object requestorVote_;
            private int requestorVoteCase_ = 0;
            private String id_ = "";
            private String name_ = "";
            private String avatarUrl_ = "";
            private String text_ = "";
            private String language_ = "";

            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase.class */
            public enum RequestorVoteCase {
                UPVOTED(10),
                DOWNVOTED(11),
                REQUESTORVOTE_NOT_SET(0);
                
                private final int value;

                RequestorVoteCase(int i) {
                    this.value = i;
                }

                public static RequestorVoteCase forNumber(int i) {
                    if (i != 0) {
                        if (i == 10) {
                            return UPVOTED;
                        }
                        if (i == 11) {
                            return DOWNVOTED;
                        }
                        return null;
                    }
                    return REQUESTORVOTE_NOT_SET;
                }

                @Deprecated
                public static RequestorVoteCase valueOf(int i) {
                    return forNumber(i);
                }

                public int getNumber() {
                    return this.value;
                }
            }

            /* renamed from: com.truecaller.api.services.comments.model.GetComments$Response$Comment$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Response$Comment$a.class */
            public static final class C2956a extends GeneratedMessageLite.Builder<Comment, C2956a> implements AbstractC2958b {
                public C2956a() {
                    super(Comment.DEFAULT_INSTANCE);
                }

                public C2956a(C2959a c2959a) {
                    super(Comment.DEFAULT_INSTANCE);
                }
            }

            static {
                Comment comment = new Comment();
                DEFAULT_INSTANCE = comment;
                GeneratedMessageLite.registerDefaultInstance(Comment.class, comment);
            }

            private Comment() {
            }

            public void clearAnonymous() {
                this.anonymous_ = false;
            }

            public void clearAvatarUrl() {
                this.avatarUrl_ = getDefaultInstance().getAvatarUrl();
            }

            public void clearDownvoted() {
                if (this.requestorVoteCase_ == 11) {
                    this.requestorVoteCase_ = 0;
                    this.requestorVote_ = null;
                }
            }

            public void clearId() {
                this.id_ = getDefaultInstance().getId();
            }

            public void clearLanguage() {
                this.language_ = getDefaultInstance().getLanguage();
            }

            public void clearName() {
                this.name_ = getDefaultInstance().getName();
            }

            public void clearNumDownvotes() {
                this.numDownvotes_ = 0;
            }

            public void clearNumUpvotes() {
                this.numUpvotes_ = 0;
            }

            public void clearPostedOn() {
                this.postedOn_ = 0L;
            }

            public void clearRequestorVote() {
                this.requestorVoteCase_ = 0;
                this.requestorVote_ = null;
            }

            public void clearText() {
                this.text_ = getDefaultInstance().getText();
            }

            public void clearUpvoted() {
                if (this.requestorVoteCase_ == 10) {
                    this.requestorVoteCase_ = 0;
                    this.requestorVote_ = null;
                }
            }

            public static Comment getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C2956a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C2956a newBuilder(Comment comment) {
                return DEFAULT_INSTANCE.createBuilder(comment);
            }

            public static Comment parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Comment parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Comment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Comment parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Comment parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Comment parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static Comment parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Comment parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Comment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Comment parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Comment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Comment parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<Comment> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setAnonymous(boolean z) {
                this.anonymous_ = z;
            }

            public void setAvatarUrl(String str) {
                str.getClass();
                this.avatarUrl_ = str;
            }

            public void setAvatarUrlBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.avatarUrl_ = byteString.toStringUtf8();
            }

            public void setDownvoted(boolean z) {
                this.requestorVoteCase_ = 11;
                this.requestorVote_ = Boolean.valueOf(z);
            }

            public void setId(String str) {
                str.getClass();
                this.id_ = str;
            }

            public void setIdBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.id_ = byteString.toStringUtf8();
            }

            public void setLanguage(String str) {
                str.getClass();
                this.language_ = str;
            }

            public void setLanguageBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.language_ = byteString.toStringUtf8();
            }

            public void setName(String str) {
                str.getClass();
                this.name_ = str;
            }

            public void setNameBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.name_ = byteString.toStringUtf8();
            }

            public void setNumDownvotes(int i) {
                this.numDownvotes_ = i;
            }

            public void setNumUpvotes(int i) {
                this.numUpvotes_ = i;
            }

            public void setPostedOn(long j) {
                this.postedOn_ = j;
            }

            public void setText(String str) {
                str.getClass();
                this.text_ = str;
            }

            public void setTextBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.text_ = byteString.toStringUtf8();
            }

            public void setUpvoted(boolean z) {
                this.requestorVoteCase_ = 10;
                this.requestorVote_ = Boolean.valueOf(z);
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u000b\u0001��\u0001\u000b\u000b������\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006\u0007\u0007\u0002\b\u0004\t\u0004\n:��\u000b:��", new Object[]{"requestorVote_", "requestorVoteCase_", "id_", "name_", "avatarUrl_", "text_", "language_", "anonymous_", "postedOn_", "numUpvotes_", "numDownvotes_"});
                    case 3:
                        return new Comment();
                    case 4:
                        return new C2956a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (Comment.class) {
                                try {
                                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                                    defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                                    if (defaultInstanceBasedParser3 == null) {
                                        defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                        PARSER = defaultInstanceBasedParser2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return defaultInstanceBasedParser2;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public boolean getAnonymous() {
                return this.anonymous_;
            }

            public String getAvatarUrl() {
                return this.avatarUrl_;
            }

            public ByteString getAvatarUrlBytes() {
                return ByteString.copyFromUtf8(this.avatarUrl_);
            }

            public boolean getDownvoted() {
                if (this.requestorVoteCase_ == 11) {
                    return ((Boolean) this.requestorVote_).booleanValue();
                }
                return false;
            }

            public String getId() {
                return this.id_;
            }

            public ByteString getIdBytes() {
                return ByteString.copyFromUtf8(this.id_);
            }

            public String getLanguage() {
                return this.language_;
            }

            public ByteString getLanguageBytes() {
                return ByteString.copyFromUtf8(this.language_);
            }

            public String getName() {
                return this.name_;
            }

            public ByteString getNameBytes() {
                return ByteString.copyFromUtf8(this.name_);
            }

            public int getNumDownvotes() {
                return this.numDownvotes_;
            }

            public int getNumUpvotes() {
                return this.numUpvotes_;
            }

            public long getPostedOn() {
                return this.postedOn_;
            }

            public RequestorVoteCase getRequestorVoteCase() {
                return RequestorVoteCase.forNumber(this.requestorVoteCase_);
            }

            public String getText() {
                return this.text_;
            }

            public ByteString getTextBytes() {
                return ByteString.copyFromUtf8(this.text_);
            }

            public boolean getUpvoted() {
                if (this.requestorVoteCase_ == 10) {
                    return ((Boolean) this.requestorVote_).booleanValue();
                }
                return false;
            }

            public boolean hasDownvoted() {
                return this.requestorVoteCase_ == 11;
            }

            public boolean hasUpvoted() {
                return this.requestorVoteCase_ == 10;
            }
        }

        /* renamed from: com.truecaller.api.services.comments.model.GetComments$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Response$a.class */
        public static final class C2957a extends GeneratedMessageLite.Builder<Response, C2957a> implements Object {
            public C2957a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C2957a(C2959a c2959a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.comments.model.GetComments$Response$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$Response$b.class */
        public interface AbstractC2958b extends MessageLiteOrBuilder {
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public void addAllComments(Iterable<? extends Comment> iterable) {
            ensureCommentsIsMutable();
            AbstractMessageLite.addAll(iterable, this.comments_);
        }

        public void addComments(int i, Comment comment) {
            comment.getClass();
            ensureCommentsIsMutable();
            this.comments_.add(i, comment);
        }

        public void addComments(Comment comment) {
            comment.getClass();
            ensureCommentsIsMutable();
            this.comments_.add(comment);
        }

        public void clearComments() {
            this.comments_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearNextPageId() {
            this.nextPageId_ = 0L;
        }

        public void clearNumber() {
            this.number_ = getDefaultInstance().getNumber();
        }

        private void ensureCommentsIsMutable() {
            Internal.ProtobufList<Comment> protobufList = this.comments_;
            if (!protobufList.isModifiable()) {
                this.comments_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2957a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2957a newBuilder(Response response) {
            return DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Response> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeComments(int i) {
            ensureCommentsIsMutable();
            this.comments_.remove(i);
        }

        public void setComments(int i, Comment comment) {
            comment.getClass();
            ensureCommentsIsMutable();
            this.comments_.set(i, comment);
        }

        public void setNextPageId(long j) {
            this.nextPageId_ = j;
        }

        public void setNumber(String str) {
            str.getClass();
            this.number_ = str;
        }

        public void setNumberBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.number_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0005\u0003��\u0001��\u0001Ȉ\u0002\u001b\u0005\u0002", new Object[]{"number_", "comments_", Comment.class, "nextPageId_"});
                case 3:
                    return new Response();
                case 4:
                    return new C2957a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Response.class) {
                            try {
                                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                                defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                                if (defaultInstanceBasedParser3 == null) {
                                    defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                    PARSER = defaultInstanceBasedParser2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return defaultInstanceBasedParser2;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public Comment getComments(int i) {
            return this.comments_.get(i);
        }

        public int getCommentsCount() {
            return this.comments_.size();
        }

        public List<Comment> getCommentsList() {
            return this.comments_;
        }

        public AbstractC2958b getCommentsOrBuilder(int i) {
            return this.comments_.get(i);
        }

        public List<? extends AbstractC2958b> getCommentsOrBuilderList() {
            return this.comments_;
        }

        public long getNextPageId() {
            return this.nextPageId_;
        }

        public String getNumber() {
            return this.number_;
        }

        public ByteString getNumberBytes() {
            return ByteString.copyFromUtf8(this.number_);
        }
    }

    /* renamed from: com.truecaller.api.services.comments.model.GetComments$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/GetComments$b.class */
    public static final class C2960b extends GeneratedMessageLite.Builder<GetComments, C2960b> implements Object {
        public C2960b() {
            super(GetComments.DEFAULT_INSTANCE);
        }

        public C2960b(C2959a c2959a) {
            super(GetComments.DEFAULT_INSTANCE);
        }
    }

    static {
        GetComments getComments = new GetComments();
        DEFAULT_INSTANCE = getComments;
        GeneratedMessageLite.registerDefaultInstance(GetComments.class, getComments);
    }

    private GetComments() {
    }

    public static GetComments getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2960b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2960b newBuilder(GetComments getComments) {
        return DEFAULT_INSTANCE.createBuilder(getComments);
    }

    public static GetComments parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetComments parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetComments parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetComments parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetComments parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetComments parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetComments parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetComments parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetComments parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetComments parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetComments parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetComments parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetComments> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
            case 3:
                return new GetComments();
            case 4:
                return new C2960b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetComments.class) {
                        try {
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                            defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                            if (defaultInstanceBasedParser3 == null) {
                                defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return defaultInstanceBasedParser2;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
